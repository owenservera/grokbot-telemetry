# sandbox_telemetry_parse — 2026-11-20 14:30:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1755091 lines=3890
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3879 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3879} |
| `chromeGpuPssKb` | {'int': 3879} |
| `chromeOtherPssKb` | {'int': 3879} |
| `chromeProcesses` | {'int': 3879} |
| `chromeProfiles` | {'int': 3879} |
| `chromeRendererMaxPssKb` | {'int': 3879} |
| `chromeRendererPssKb` | {'int': 3879} |
| `chromeRenderers` | {'int': 3879} |
| `chromeTabs` | {'int': 3879} |
| `chromeTabsProbedProfiles` | {'int': 3879} |
| `chromeUtilityPssKb` | {'int': 3879} |
| `desktopPssKb` | {'int': 3879} |
| `hostPssKb` | {'int': 3879} |
| `kind` | {'str': 3879} |
| `memAvailableKb` | {'int': 3879} |
| `memTotalKb` | {'int': 3879} |
| `otherPssKb` | {'int': 3879} |
| `processes` | {'int': 3879} |
| `pssFallbackProcesses` | {'int': 3879} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
