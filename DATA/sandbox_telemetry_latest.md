# sandbox_telemetry_parse — 2026-11-11 14:22:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1670655 lines=3700
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3691 |
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
| `chromeBrowserPssKb` | {'int': 3691} |
| `chromeGpuPssKb` | {'int': 3691} |
| `chromeOtherPssKb` | {'int': 3691} |
| `chromeProcesses` | {'int': 3691} |
| `chromeProfiles` | {'int': 3691} |
| `chromeRendererMaxPssKb` | {'int': 3691} |
| `chromeRendererPssKb` | {'int': 3691} |
| `chromeRenderers` | {'int': 3691} |
| `chromeTabs` | {'int': 3691} |
| `chromeTabsProbedProfiles` | {'int': 3691} |
| `chromeUtilityPssKb` | {'int': 3691} |
| `desktopPssKb` | {'int': 3691} |
| `hostPssKb` | {'int': 3691} |
| `kind` | {'str': 3691} |
| `memAvailableKb` | {'int': 3691} |
| `memTotalKb` | {'int': 3691} |
| `otherPssKb` | {'int': 3691} |
| `processes` | {'int': 3691} |
| `pssFallbackProcesses` | {'int': 3691} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
