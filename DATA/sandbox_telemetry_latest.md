# sandbox_telemetry_parse — 2026-11-20 16:33:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1797778 lines=3986
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3973 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 3973} |
| `chromeGpuPssKb` | {'int': 3973} |
| `chromeOtherPssKb` | {'int': 3973} |
| `chromeProcesses` | {'int': 3973} |
| `chromeProfiles` | {'int': 3973} |
| `chromeRendererMaxPssKb` | {'int': 3973} |
| `chromeRendererPssKb` | {'int': 3973} |
| `chromeRenderers` | {'int': 3973} |
| `chromeTabs` | {'int': 3973} |
| `chromeTabsProbedProfiles` | {'int': 3973} |
| `chromeUtilityPssKb` | {'int': 3973} |
| `desktopPssKb` | {'int': 3973} |
| `hostPssKb` | {'int': 3973} |
| `kind` | {'str': 3973} |
| `memAvailableKb` | {'int': 3973} |
| `memTotalKb` | {'int': 3973} |
| `otherPssKb` | {'int': 3973} |
| `processes` | {'int': 3973} |
| `pssFallbackProcesses` | {'int': 3973} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
