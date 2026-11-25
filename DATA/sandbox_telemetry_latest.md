# sandbox_telemetry_parse — 2026-11-25 22:04:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2942835 lines=6519
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6504 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6504} |
| `chromeGpuPssKb` | {'int': 6504} |
| `chromeOtherPssKb` | {'int': 6504} |
| `chromeProcesses` | {'int': 6504} |
| `chromeProfiles` | {'int': 6504} |
| `chromeRendererMaxPssKb` | {'int': 6504} |
| `chromeRendererPssKb` | {'int': 6504} |
| `chromeRenderers` | {'int': 6504} |
| `chromeTabs` | {'int': 6504} |
| `chromeTabsProbedProfiles` | {'int': 6504} |
| `chromeUtilityPssKb` | {'int': 6504} |
| `desktopPssKb` | {'int': 6504} |
| `hostPssKb` | {'int': 6504} |
| `kind` | {'str': 6504} |
| `memAvailableKb` | {'int': 6504} |
| `memTotalKb` | {'int': 6504} |
| `otherPssKb` | {'int': 6504} |
| `processes` | {'int': 6504} |
| `pssFallbackProcesses` | {'int': 6504} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
