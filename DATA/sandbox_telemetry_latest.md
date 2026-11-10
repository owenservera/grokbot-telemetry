# sandbox_telemetry_parse — 2026-11-10 03:28:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=970667 lines=2153
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2144 |
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
| `chromeBrowserPssKb` | {'int': 2144} |
| `chromeGpuPssKb` | {'int': 2144} |
| `chromeOtherPssKb` | {'int': 2144} |
| `chromeProcesses` | {'int': 2144} |
| `chromeProfiles` | {'int': 2144} |
| `chromeRendererMaxPssKb` | {'int': 2144} |
| `chromeRendererPssKb` | {'int': 2144} |
| `chromeRenderers` | {'int': 2144} |
| `chromeTabs` | {'int': 2144} |
| `chromeTabsProbedProfiles` | {'int': 2144} |
| `chromeUtilityPssKb` | {'int': 2144} |
| `desktopPssKb` | {'int': 2144} |
| `hostPssKb` | {'int': 2144} |
| `kind` | {'str': 2144} |
| `memAvailableKb` | {'int': 2144} |
| `memTotalKb` | {'int': 2144} |
| `otherPssKb` | {'int': 2144} |
| `processes` | {'int': 2144} |
| `pssFallbackProcesses` | {'int': 2144} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
