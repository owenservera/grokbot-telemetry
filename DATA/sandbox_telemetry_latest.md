# sandbox_telemetry_parse — 2026-10-14 00:41:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=829 lines=6
## kind counts
| kind | count |
|------|------:|
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `memory_sample` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1} |
| `chromeGpuPssKb` | {'int': 1} |
| `chromeOtherPssKb` | {'int': 1} |
| `chromeProcesses` | {'int': 1} |
| `chromeProfiles` | {'int': 1} |
| `chromeRendererMaxPssKb` | {'int': 1} |
| `chromeRendererPssKb` | {'int': 1} |
| `chromeRenderers` | {'int': 1} |
| `chromeTabs` | {'int': 1} |
| `chromeTabsProbedProfiles` | {'int': 1} |
| `chromeUtilityPssKb` | {'int': 1} |
| `desktopPssKb` | {'int': 1} |
| `hostPssKb` | {'int': 1} |
| `kind` | {'str': 1} |
| `memAvailableKb` | {'int': 1} |
| `memTotalKb` | {'int': 1} |
| `otherPssKb` | {'int': 1} |
| `processes` | {'int': 1} |
| `pssFallbackProcesses` | {'int': 1} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
