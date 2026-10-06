# sandbox_telemetry_parse — 2026-10-06 16:27:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=476258 lines=1049
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1044 |
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
| `chromeBrowserPssKb` | {'int': 1044} |
| `chromeGpuPssKb` | {'int': 1044} |
| `chromeOtherPssKb` | {'int': 1044} |
| `chromeProcesses` | {'int': 1044} |
| `chromeProfiles` | {'int': 1044} |
| `chromeRendererMaxPssKb` | {'int': 1044} |
| `chromeRendererPssKb` | {'int': 1044} |
| `chromeRenderers` | {'int': 1044} |
| `chromeTabs` | {'int': 1044} |
| `chromeTabsProbedProfiles` | {'int': 1044} |
| `chromeUtilityPssKb` | {'int': 1044} |
| `desktopPssKb` | {'int': 1044} |
| `hostPssKb` | {'int': 1044} |
| `kind` | {'str': 1044} |
| `memAvailableKb` | {'int': 1044} |
| `memTotalKb` | {'int': 1044} |
| `otherPssKb` | {'int': 1044} |
| `processes` | {'int': 1044} |
| `pssFallbackProcesses` | {'int': 1044} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
