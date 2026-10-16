# sandbox_telemetry_parse — 2026-10-16 02:36:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=2638 lines=10
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5 |
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
| `chromeBrowserPssKb` | {'int': 5} |
| `chromeGpuPssKb` | {'int': 5} |
| `chromeOtherPssKb` | {'int': 5} |
| `chromeProcesses` | {'int': 5} |
| `chromeProfiles` | {'int': 5} |
| `chromeRendererMaxPssKb` | {'int': 5} |
| `chromeRendererPssKb` | {'int': 5} |
| `chromeRenderers` | {'int': 5} |
| `chromeTabs` | {'int': 5} |
| `chromeTabsProbedProfiles` | {'int': 5} |
| `chromeUtilityPssKb` | {'int': 5} |
| `desktopPssKb` | {'int': 5} |
| `hostPssKb` | {'int': 5} |
| `kind` | {'str': 5} |
| `memAvailableKb` | {'int': 5} |
| `memTotalKb` | {'int': 5} |
| `otherPssKb` | {'int': 5} |
| `processes` | {'int': 5} |
| `pssFallbackProcesses` | {'int': 5} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
