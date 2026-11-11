# sandbox_telemetry_parse — 2026-11-12 00:11:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1882925 lines=4169
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4160 |
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
| `chromeBrowserPssKb` | {'int': 4160} |
| `chromeGpuPssKb` | {'int': 4160} |
| `chromeOtherPssKb` | {'int': 4160} |
| `chromeProcesses` | {'int': 4160} |
| `chromeProfiles` | {'int': 4160} |
| `chromeRendererMaxPssKb` | {'int': 4160} |
| `chromeRendererPssKb` | {'int': 4160} |
| `chromeRenderers` | {'int': 4160} |
| `chromeTabs` | {'int': 4160} |
| `chromeTabsProbedProfiles` | {'int': 4160} |
| `chromeUtilityPssKb` | {'int': 4160} |
| `desktopPssKb` | {'int': 4160} |
| `hostPssKb` | {'int': 4160} |
| `kind` | {'str': 4160} |
| `memAvailableKb` | {'int': 4160} |
| `memTotalKb` | {'int': 4160} |
| `otherPssKb` | {'int': 4160} |
| `processes` | {'int': 4160} |
| `pssFallbackProcesses` | {'int': 4160} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
