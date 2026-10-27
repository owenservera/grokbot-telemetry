# sandbox_telemetry_parse — 2026-10-27 11:34:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=492376 lines=1092
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1087 |
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
| `chromeBrowserPssKb` | {'int': 1087} |
| `chromeGpuPssKb` | {'int': 1087} |
| `chromeOtherPssKb` | {'int': 1087} |
| `chromeProcesses` | {'int': 1087} |
| `chromeProfiles` | {'int': 1087} |
| `chromeRendererMaxPssKb` | {'int': 1087} |
| `chromeRendererPssKb` | {'int': 1087} |
| `chromeRenderers` | {'int': 1087} |
| `chromeTabs` | {'int': 1087} |
| `chromeTabsProbedProfiles` | {'int': 1087} |
| `chromeUtilityPssKb` | {'int': 1087} |
| `desktopPssKb` | {'int': 1087} |
| `hostPssKb` | {'int': 1087} |
| `kind` | {'str': 1087} |
| `memAvailableKb` | {'int': 1087} |
| `memTotalKb` | {'int': 1087} |
| `otherPssKb` | {'int': 1087} |
| `processes` | {'int': 1087} |
| `pssFallbackProcesses` | {'int': 1087} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
