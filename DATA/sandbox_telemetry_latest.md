# sandbox_telemetry_parse — 2026-11-26 05:37:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3098435 lines=6863
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6848 |
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
| `chromeBrowserPssKb` | {'int': 6848} |
| `chromeGpuPssKb` | {'int': 6848} |
| `chromeOtherPssKb` | {'int': 6848} |
| `chromeProcesses` | {'int': 6848} |
| `chromeProfiles` | {'int': 6848} |
| `chromeRendererMaxPssKb` | {'int': 6848} |
| `chromeRendererPssKb` | {'int': 6848} |
| `chromeRenderers` | {'int': 6848} |
| `chromeTabs` | {'int': 6848} |
| `chromeTabsProbedProfiles` | {'int': 6848} |
| `chromeUtilityPssKb` | {'int': 6848} |
| `desktopPssKb` | {'int': 6848} |
| `hostPssKb` | {'int': 6848} |
| `kind` | {'str': 6848} |
| `memAvailableKb` | {'int': 6848} |
| `memTotalKb` | {'int': 6848} |
| `otherPssKb` | {'int': 6848} |
| `processes` | {'int': 6848} |
| `pssFallbackProcesses` | {'int': 6848} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
