# sandbox_telemetry_parse — 2026-11-18 10:53:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=788678 lines=1750
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1743 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1743} |
| `chromeGpuPssKb` | {'int': 1743} |
| `chromeOtherPssKb` | {'int': 1743} |
| `chromeProcesses` | {'int': 1743} |
| `chromeProfiles` | {'int': 1743} |
| `chromeRendererMaxPssKb` | {'int': 1743} |
| `chromeRendererPssKb` | {'int': 1743} |
| `chromeRenderers` | {'int': 1743} |
| `chromeTabs` | {'int': 1743} |
| `chromeTabsProbedProfiles` | {'int': 1743} |
| `chromeUtilityPssKb` | {'int': 1743} |
| `desktopPssKb` | {'int': 1743} |
| `hostPssKb` | {'int': 1743} |
| `kind` | {'str': 1743} |
| `memAvailableKb` | {'int': 1743} |
| `memTotalKb` | {'int': 1743} |
| `otherPssKb` | {'int': 1743} |
| `processes` | {'int': 1743} |
| `pssFallbackProcesses` | {'int': 1743} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
