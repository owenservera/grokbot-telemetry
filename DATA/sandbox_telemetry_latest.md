# sandbox_telemetry_parse — 2026-11-12 23:07:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2366373 lines=5237
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5228 |
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
| `chromeBrowserPssKb` | {'int': 5228} |
| `chromeGpuPssKb` | {'int': 5228} |
| `chromeOtherPssKb` | {'int': 5228} |
| `chromeProcesses` | {'int': 5228} |
| `chromeProfiles` | {'int': 5228} |
| `chromeRendererMaxPssKb` | {'int': 5228} |
| `chromeRendererPssKb` | {'int': 5228} |
| `chromeRenderers` | {'int': 5228} |
| `chromeTabs` | {'int': 5228} |
| `chromeTabsProbedProfiles` | {'int': 5228} |
| `chromeUtilityPssKb` | {'int': 5228} |
| `desktopPssKb` | {'int': 5228} |
| `hostPssKb` | {'int': 5228} |
| `kind` | {'str': 5228} |
| `memAvailableKb` | {'int': 5228} |
| `memTotalKb` | {'int': 5228} |
| `otherPssKb` | {'int': 5228} |
| `processes` | {'int': 5228} |
| `pssFallbackProcesses` | {'int': 5228} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
