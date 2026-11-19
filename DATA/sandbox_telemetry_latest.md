# sandbox_telemetry_parse — 2026-11-19 12:44:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1277746 lines=2833
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2824 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2824} |
| `chromeGpuPssKb` | {'int': 2824} |
| `chromeOtherPssKb` | {'int': 2824} |
| `chromeProcesses` | {'int': 2824} |
| `chromeProfiles` | {'int': 2824} |
| `chromeRendererMaxPssKb` | {'int': 2824} |
| `chromeRendererPssKb` | {'int': 2824} |
| `chromeRenderers` | {'int': 2824} |
| `chromeTabs` | {'int': 2824} |
| `chromeTabsProbedProfiles` | {'int': 2824} |
| `chromeUtilityPssKb` | {'int': 2824} |
| `desktopPssKb` | {'int': 2824} |
| `hostPssKb` | {'int': 2824} |
| `kind` | {'str': 2824} |
| `memAvailableKb` | {'int': 2824} |
| `memTotalKb` | {'int': 2824} |
| `otherPssKb` | {'int': 2824} |
| `processes` | {'int': 2824} |
| `pssFallbackProcesses` | {'int': 2824} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
