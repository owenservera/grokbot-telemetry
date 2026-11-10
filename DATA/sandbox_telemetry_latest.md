# sandbox_telemetry_parse — 2026-11-10 13:12:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1151196 lines=2552
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2543 |
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
| `chromeBrowserPssKb` | {'int': 2543} |
| `chromeGpuPssKb` | {'int': 2543} |
| `chromeOtherPssKb` | {'int': 2543} |
| `chromeProcesses` | {'int': 2543} |
| `chromeProfiles` | {'int': 2543} |
| `chromeRendererMaxPssKb` | {'int': 2543} |
| `chromeRendererPssKb` | {'int': 2543} |
| `chromeRenderers` | {'int': 2543} |
| `chromeTabs` | {'int': 2543} |
| `chromeTabsProbedProfiles` | {'int': 2543} |
| `chromeUtilityPssKb` | {'int': 2543} |
| `desktopPssKb` | {'int': 2543} |
| `hostPssKb` | {'int': 2543} |
| `kind` | {'str': 2543} |
| `memAvailableKb` | {'int': 2543} |
| `memTotalKb` | {'int': 2543} |
| `otherPssKb` | {'int': 2543} |
| `processes` | {'int': 2543} |
| `pssFallbackProcesses` | {'int': 2543} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
