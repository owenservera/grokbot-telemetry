# sandbox_telemetry_parse — 2026-11-25 12:18:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2752915 lines=6099
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6084 |
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
| `chromeBrowserPssKb` | {'int': 6084} |
| `chromeGpuPssKb` | {'int': 6084} |
| `chromeOtherPssKb` | {'int': 6084} |
| `chromeProcesses` | {'int': 6084} |
| `chromeProfiles` | {'int': 6084} |
| `chromeRendererMaxPssKb` | {'int': 6084} |
| `chromeRendererPssKb` | {'int': 6084} |
| `chromeRenderers` | {'int': 6084} |
| `chromeTabs` | {'int': 6084} |
| `chromeTabsProbedProfiles` | {'int': 6084} |
| `chromeUtilityPssKb` | {'int': 6084} |
| `desktopPssKb` | {'int': 6084} |
| `hostPssKb` | {'int': 6084} |
| `kind` | {'str': 6084} |
| `memAvailableKb` | {'int': 6084} |
| `memTotalKb` | {'int': 6084} |
| `otherPssKb` | {'int': 6084} |
| `processes` | {'int': 6084} |
| `pssFallbackProcesses` | {'int': 6084} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
