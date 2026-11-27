# sandbox_telemetry_parse — 2026-11-27 13:42:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=440729 lines=981
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 973 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 973} |
| `chromeGpuPssKb` | {'int': 973} |
| `chromeOtherPssKb` | {'int': 973} |
| `chromeProcesses` | {'int': 973} |
| `chromeProfiles` | {'int': 973} |
| `chromeRendererMaxPssKb` | {'int': 973} |
| `chromeRendererPssKb` | {'int': 973} |
| `chromeRenderers` | {'int': 973} |
| `chromeTabs` | {'int': 973} |
| `chromeTabsProbedProfiles` | {'int': 973} |
| `chromeUtilityPssKb` | {'int': 973} |
| `desktopPssKb` | {'int': 973} |
| `hostPssKb` | {'int': 973} |
| `kind` | {'str': 973} |
| `memAvailableKb` | {'int': 973} |
| `memTotalKb` | {'int': 973} |
| `otherPssKb` | {'int': 973} |
| `processes` | {'int': 973} |
| `pssFallbackProcesses` | {'int': 973} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
