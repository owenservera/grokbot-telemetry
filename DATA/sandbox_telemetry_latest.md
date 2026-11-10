# sandbox_telemetry_parse — 2026-11-10 14:48:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1186062 lines=2629
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2620 |
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
| `chromeBrowserPssKb` | {'int': 2620} |
| `chromeGpuPssKb` | {'int': 2620} |
| `chromeOtherPssKb` | {'int': 2620} |
| `chromeProcesses` | {'int': 2620} |
| `chromeProfiles` | {'int': 2620} |
| `chromeRendererMaxPssKb` | {'int': 2620} |
| `chromeRendererPssKb` | {'int': 2620} |
| `chromeRenderers` | {'int': 2620} |
| `chromeTabs` | {'int': 2620} |
| `chromeTabsProbedProfiles` | {'int': 2620} |
| `chromeUtilityPssKb` | {'int': 2620} |
| `desktopPssKb` | {'int': 2620} |
| `hostPssKb` | {'int': 2620} |
| `kind` | {'str': 2620} |
| `memAvailableKb` | {'int': 2620} |
| `memTotalKb` | {'int': 2620} |
| `otherPssKb` | {'int': 2620} |
| `processes` | {'int': 2620} |
| `pssFallbackProcesses` | {'int': 2620} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
