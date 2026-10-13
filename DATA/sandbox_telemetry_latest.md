# sandbox_telemetry_parse — 2026-10-14 01:25:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=19806 lines=48
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 43 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 43} |
| `chromeGpuPssKb` | {'int': 43} |
| `chromeOtherPssKb` | {'int': 43} |
| `chromeProcesses` | {'int': 43} |
| `chromeProfiles` | {'int': 43} |
| `chromeRendererMaxPssKb` | {'int': 43} |
| `chromeRendererPssKb` | {'int': 43} |
| `chromeRenderers` | {'int': 43} |
| `chromeTabs` | {'int': 43} |
| `chromeTabsProbedProfiles` | {'int': 43} |
| `chromeUtilityPssKb` | {'int': 43} |
| `desktopPssKb` | {'int': 43} |
| `hostPssKb` | {'int': 43} |
| `kind` | {'str': 43} |
| `memAvailableKb` | {'int': 43} |
| `memTotalKb` | {'int': 43} |
| `otherPssKb` | {'int': 43} |
| `processes` | {'int': 43} |
| `pssFallbackProcesses` | {'int': 43} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
