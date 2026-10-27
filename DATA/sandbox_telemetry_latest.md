# sandbox_telemetry_parse — 2026-10-27 08:25:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=413632 lines=918
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 913 |
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
| `chromeBrowserPssKb` | {'int': 913} |
| `chromeGpuPssKb` | {'int': 913} |
| `chromeOtherPssKb` | {'int': 913} |
| `chromeProcesses` | {'int': 913} |
| `chromeProfiles` | {'int': 913} |
| `chromeRendererMaxPssKb` | {'int': 913} |
| `chromeRendererPssKb` | {'int': 913} |
| `chromeRenderers` | {'int': 913} |
| `chromeTabs` | {'int': 913} |
| `chromeTabsProbedProfiles` | {'int': 913} |
| `chromeUtilityPssKb` | {'int': 913} |
| `desktopPssKb` | {'int': 913} |
| `hostPssKb` | {'int': 913} |
| `kind` | {'str': 913} |
| `memAvailableKb` | {'int': 913} |
| `memTotalKb` | {'int': 913} |
| `otherPssKb` | {'int': 913} |
| `processes` | {'int': 913} |
| `pssFallbackProcesses` | {'int': 913} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
