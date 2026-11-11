# sandbox_telemetry_parse — 2026-11-11 07:15:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1522252 lines=3372
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3363 |
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
| `chromeBrowserPssKb` | {'int': 3363} |
| `chromeGpuPssKb` | {'int': 3363} |
| `chromeOtherPssKb` | {'int': 3363} |
| `chromeProcesses` | {'int': 3363} |
| `chromeProfiles` | {'int': 3363} |
| `chromeRendererMaxPssKb` | {'int': 3363} |
| `chromeRendererPssKb` | {'int': 3363} |
| `chromeRenderers` | {'int': 3363} |
| `chromeTabs` | {'int': 3363} |
| `chromeTabsProbedProfiles` | {'int': 3363} |
| `chromeUtilityPssKb` | {'int': 3363} |
| `desktopPssKb` | {'int': 3363} |
| `hostPssKb` | {'int': 3363} |
| `kind` | {'str': 3363} |
| `memAvailableKb` | {'int': 3363} |
| `memTotalKb` | {'int': 3363} |
| `otherPssKb` | {'int': 3363} |
| `processes` | {'int': 3363} |
| `pssFallbackProcesses` | {'int': 3363} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
