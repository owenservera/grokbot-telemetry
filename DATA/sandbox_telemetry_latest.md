# sandbox_telemetry_parse — 2026-11-10 01:19:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=921328 lines=2044
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2035 |
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
| `chromeBrowserPssKb` | {'int': 2035} |
| `chromeGpuPssKb` | {'int': 2035} |
| `chromeOtherPssKb` | {'int': 2035} |
| `chromeProcesses` | {'int': 2035} |
| `chromeProfiles` | {'int': 2035} |
| `chromeRendererMaxPssKb` | {'int': 2035} |
| `chromeRendererPssKb` | {'int': 2035} |
| `chromeRenderers` | {'int': 2035} |
| `chromeTabs` | {'int': 2035} |
| `chromeTabsProbedProfiles` | {'int': 2035} |
| `chromeUtilityPssKb` | {'int': 2035} |
| `desktopPssKb` | {'int': 2035} |
| `hostPssKb` | {'int': 2035} |
| `kind` | {'str': 2035} |
| `memAvailableKb` | {'int': 2035} |
| `memTotalKb` | {'int': 2035} |
| `otherPssKb` | {'int': 2035} |
| `processes` | {'int': 2035} |
| `pssFallbackProcesses` | {'int': 2035} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
