# sandbox_telemetry_parse — 2026-11-11 12:08:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1622700 lines=3594
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3585 |
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
| `chromeBrowserPssKb` | {'int': 3585} |
| `chromeGpuPssKb` | {'int': 3585} |
| `chromeOtherPssKb` | {'int': 3585} |
| `chromeProcesses` | {'int': 3585} |
| `chromeProfiles` | {'int': 3585} |
| `chromeRendererMaxPssKb` | {'int': 3585} |
| `chromeRendererPssKb` | {'int': 3585} |
| `chromeRenderers` | {'int': 3585} |
| `chromeTabs` | {'int': 3585} |
| `chromeTabsProbedProfiles` | {'int': 3585} |
| `chromeUtilityPssKb` | {'int': 3585} |
| `desktopPssKb` | {'int': 3585} |
| `hostPssKb` | {'int': 3585} |
| `kind` | {'str': 3585} |
| `memAvailableKb` | {'int': 3585} |
| `memTotalKb` | {'int': 3585} |
| `otherPssKb` | {'int': 3585} |
| `processes` | {'int': 3585} |
| `pssFallbackProcesses` | {'int': 3585} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
