# sandbox_telemetry_parse — 2026-10-27 08:50:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=424932 lines=943
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 938 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 938} |
| `chromeGpuPssKb` | {'int': 938} |
| `chromeOtherPssKb` | {'int': 938} |
| `chromeProcesses` | {'int': 938} |
| `chromeProfiles` | {'int': 938} |
| `chromeRendererMaxPssKb` | {'int': 938} |
| `chromeRendererPssKb` | {'int': 938} |
| `chromeRenderers` | {'int': 938} |
| `chromeTabs` | {'int': 938} |
| `chromeTabsProbedProfiles` | {'int': 938} |
| `chromeUtilityPssKb` | {'int': 938} |
| `desktopPssKb` | {'int': 938} |
| `hostPssKb` | {'int': 938} |
| `kind` | {'str': 938} |
| `memAvailableKb` | {'int': 938} |
| `memTotalKb` | {'int': 938} |
| `otherPssKb` | {'int': 938} |
| `processes` | {'int': 938} |
| `pssFallbackProcesses` | {'int': 938} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
