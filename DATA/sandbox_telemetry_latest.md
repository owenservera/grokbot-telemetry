# sandbox_telemetry_parse — 2026-11-11 03:59:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1461662 lines=3238
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3229 |
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
| `chromeBrowserPssKb` | {'int': 3229} |
| `chromeGpuPssKb` | {'int': 3229} |
| `chromeOtherPssKb` | {'int': 3229} |
| `chromeProcesses` | {'int': 3229} |
| `chromeProfiles` | {'int': 3229} |
| `chromeRendererMaxPssKb` | {'int': 3229} |
| `chromeRendererPssKb` | {'int': 3229} |
| `chromeRenderers` | {'int': 3229} |
| `chromeTabs` | {'int': 3229} |
| `chromeTabsProbedProfiles` | {'int': 3229} |
| `chromeUtilityPssKb` | {'int': 3229} |
| `desktopPssKb` | {'int': 3229} |
| `hostPssKb` | {'int': 3229} |
| `kind` | {'str': 3229} |
| `memAvailableKb` | {'int': 3229} |
| `memTotalKb` | {'int': 3229} |
| `otherPssKb` | {'int': 3229} |
| `processes` | {'int': 3229} |
| `pssFallbackProcesses` | {'int': 3229} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
