# sandbox_telemetry_parse — 2026-11-20 19:08:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1848009 lines=4097
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4084 |
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
| `chromeBrowserPssKb` | {'int': 4084} |
| `chromeGpuPssKb` | {'int': 4084} |
| `chromeOtherPssKb` | {'int': 4084} |
| `chromeProcesses` | {'int': 4084} |
| `chromeProfiles` | {'int': 4084} |
| `chromeRendererMaxPssKb` | {'int': 4084} |
| `chromeRendererPssKb` | {'int': 4084} |
| `chromeRenderers` | {'int': 4084} |
| `chromeTabs` | {'int': 4084} |
| `chromeTabsProbedProfiles` | {'int': 4084} |
| `chromeUtilityPssKb` | {'int': 4084} |
| `desktopPssKb` | {'int': 4084} |
| `hostPssKb` | {'int': 4084} |
| `kind` | {'str': 4084} |
| `memAvailableKb` | {'int': 4084} |
| `memTotalKb` | {'int': 4084} |
| `otherPssKb` | {'int': 4084} |
| `processes` | {'int': 4084} |
| `pssFallbackProcesses` | {'int': 4084} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
