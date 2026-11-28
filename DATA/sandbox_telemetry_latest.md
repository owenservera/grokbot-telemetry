# sandbox_telemetry_parse — 2026-11-28 21:17:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1062583 lines=2355
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2347 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2347} |
| `chromeGpuPssKb` | {'int': 2347} |
| `chromeOtherPssKb` | {'int': 2347} |
| `chromeProcesses` | {'int': 2347} |
| `chromeProfiles` | {'int': 2347} |
| `chromeRendererMaxPssKb` | {'int': 2347} |
| `chromeRendererPssKb` | {'int': 2347} |
| `chromeRenderers` | {'int': 2347} |
| `chromeTabs` | {'int': 2347} |
| `chromeTabsProbedProfiles` | {'int': 2347} |
| `chromeUtilityPssKb` | {'int': 2347} |
| `desktopPssKb` | {'int': 2347} |
| `hostPssKb` | {'int': 2347} |
| `kind` | {'str': 2347} |
| `memAvailableKb` | {'int': 2347} |
| `memTotalKb` | {'int': 2347} |
| `otherPssKb` | {'int': 2347} |
| `processes` | {'int': 2347} |
| `pssFallbackProcesses` | {'int': 2347} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
