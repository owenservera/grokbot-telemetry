# sandbox_telemetry_parse — 2026-11-26 09:20:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3183037 lines=7050
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7035 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 7035} |
| `chromeGpuPssKb` | {'int': 7035} |
| `chromeOtherPssKb` | {'int': 7035} |
| `chromeProcesses` | {'int': 7035} |
| `chromeProfiles` | {'int': 7035} |
| `chromeRendererMaxPssKb` | {'int': 7035} |
| `chromeRendererPssKb` | {'int': 7035} |
| `chromeRenderers` | {'int': 7035} |
| `chromeTabs` | {'int': 7035} |
| `chromeTabsProbedProfiles` | {'int': 7035} |
| `chromeUtilityPssKb` | {'int': 7035} |
| `desktopPssKb` | {'int': 7035} |
| `hostPssKb` | {'int': 7035} |
| `kind` | {'str': 7035} |
| `memAvailableKb` | {'int': 7035} |
| `memTotalKb` | {'int': 7035} |
| `otherPssKb` | {'int': 7035} |
| `processes` | {'int': 7035} |
| `pssFallbackProcesses` | {'int': 7035} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
