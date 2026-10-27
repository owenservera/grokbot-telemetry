# sandbox_telemetry_parse — 2026-10-27 11:20:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=487393 lines=1081
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1076 |
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
| `chromeBrowserPssKb` | {'int': 1076} |
| `chromeGpuPssKb` | {'int': 1076} |
| `chromeOtherPssKb` | {'int': 1076} |
| `chromeProcesses` | {'int': 1076} |
| `chromeProfiles` | {'int': 1076} |
| `chromeRendererMaxPssKb` | {'int': 1076} |
| `chromeRendererPssKb` | {'int': 1076} |
| `chromeRenderers` | {'int': 1076} |
| `chromeTabs` | {'int': 1076} |
| `chromeTabsProbedProfiles` | {'int': 1076} |
| `chromeUtilityPssKb` | {'int': 1076} |
| `desktopPssKb` | {'int': 1076} |
| `hostPssKb` | {'int': 1076} |
| `kind` | {'str': 1076} |
| `memAvailableKb` | {'int': 1076} |
| `memTotalKb` | {'int': 1076} |
| `otherPssKb` | {'int': 1076} |
| `processes` | {'int': 1076} |
| `pssFallbackProcesses` | {'int': 1076} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
