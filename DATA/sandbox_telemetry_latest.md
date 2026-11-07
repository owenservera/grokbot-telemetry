# sandbox_telemetry_parse — 2026-11-07 04:32:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=313278 lines=700
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 691 |
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
| `chromeBrowserPssKb` | {'int': 691} |
| `chromeGpuPssKb` | {'int': 691} |
| `chromeOtherPssKb` | {'int': 691} |
| `chromeProcesses` | {'int': 691} |
| `chromeProfiles` | {'int': 691} |
| `chromeRendererMaxPssKb` | {'int': 691} |
| `chromeRendererPssKb` | {'int': 691} |
| `chromeRenderers` | {'int': 691} |
| `chromeTabs` | {'int': 691} |
| `chromeTabsProbedProfiles` | {'int': 691} |
| `chromeUtilityPssKb` | {'int': 691} |
| `desktopPssKb` | {'int': 691} |
| `hostPssKb` | {'int': 691} |
| `kind` | {'str': 691} |
| `memAvailableKb` | {'int': 691} |
| `memTotalKb` | {'int': 691} |
| `otherPssKb` | {'int': 691} |
| `processes` | {'int': 691} |
| `pssFallbackProcesses` | {'int': 691} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
