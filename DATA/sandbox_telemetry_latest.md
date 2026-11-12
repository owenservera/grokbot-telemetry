# sandbox_telemetry_parse — 2026-11-12 19:19:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2288983 lines=5066
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5057 |
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
| `chromeBrowserPssKb` | {'int': 5057} |
| `chromeGpuPssKb` | {'int': 5057} |
| `chromeOtherPssKb` | {'int': 5057} |
| `chromeProcesses` | {'int': 5057} |
| `chromeProfiles` | {'int': 5057} |
| `chromeRendererMaxPssKb` | {'int': 5057} |
| `chromeRendererPssKb` | {'int': 5057} |
| `chromeRenderers` | {'int': 5057} |
| `chromeTabs` | {'int': 5057} |
| `chromeTabsProbedProfiles` | {'int': 5057} |
| `chromeUtilityPssKb` | {'int': 5057} |
| `desktopPssKb` | {'int': 5057} |
| `hostPssKb` | {'int': 5057} |
| `kind` | {'str': 5057} |
| `memAvailableKb` | {'int': 5057} |
| `memTotalKb` | {'int': 5057} |
| `otherPssKb` | {'int': 5057} |
| `processes` | {'int': 5057} |
| `pssFallbackProcesses` | {'int': 5057} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
