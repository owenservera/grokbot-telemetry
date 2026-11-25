# sandbox_telemetry_parse — 2026-11-25 02:07:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2545792 lines=5641
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5626 |
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
| `chromeBrowserPssKb` | {'int': 5626} |
| `chromeGpuPssKb` | {'int': 5626} |
| `chromeOtherPssKb` | {'int': 5626} |
| `chromeProcesses` | {'int': 5626} |
| `chromeProfiles` | {'int': 5626} |
| `chromeRendererMaxPssKb` | {'int': 5626} |
| `chromeRendererPssKb` | {'int': 5626} |
| `chromeRenderers` | {'int': 5626} |
| `chromeTabs` | {'int': 5626} |
| `chromeTabsProbedProfiles` | {'int': 5626} |
| `chromeUtilityPssKb` | {'int': 5626} |
| `desktopPssKb` | {'int': 5626} |
| `hostPssKb` | {'int': 5626} |
| `kind` | {'str': 5626} |
| `memAvailableKb` | {'int': 5626} |
| `memTotalKb` | {'int': 5626} |
| `otherPssKb` | {'int': 5626} |
| `processes` | {'int': 5626} |
| `pssFallbackProcesses` | {'int': 5626} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
