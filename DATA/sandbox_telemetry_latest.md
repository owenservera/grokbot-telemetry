# sandbox_telemetry_parse — 2026-10-27 11:43:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=495547 lines=1099
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1094 |
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
| `chromeBrowserPssKb` | {'int': 1094} |
| `chromeGpuPssKb` | {'int': 1094} |
| `chromeOtherPssKb` | {'int': 1094} |
| `chromeProcesses` | {'int': 1094} |
| `chromeProfiles` | {'int': 1094} |
| `chromeRendererMaxPssKb` | {'int': 1094} |
| `chromeRendererPssKb` | {'int': 1094} |
| `chromeRenderers` | {'int': 1094} |
| `chromeTabs` | {'int': 1094} |
| `chromeTabsProbedProfiles` | {'int': 1094} |
| `chromeUtilityPssKb` | {'int': 1094} |
| `desktopPssKb` | {'int': 1094} |
| `hostPssKb` | {'int': 1094} |
| `kind` | {'str': 1094} |
| `memAvailableKb` | {'int': 1094} |
| `memTotalKb` | {'int': 1094} |
| `otherPssKb` | {'int': 1094} |
| `processes` | {'int': 1094} |
| `pssFallbackProcesses` | {'int': 1094} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
