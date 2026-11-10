# sandbox_telemetry_parse — 2026-11-10 08:53:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1066081 lines=2364
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2355 |
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
| `chromeBrowserPssKb` | {'int': 2355} |
| `chromeGpuPssKb` | {'int': 2355} |
| `chromeOtherPssKb` | {'int': 2355} |
| `chromeProcesses` | {'int': 2355} |
| `chromeProfiles` | {'int': 2355} |
| `chromeRendererMaxPssKb` | {'int': 2355} |
| `chromeRendererPssKb` | {'int': 2355} |
| `chromeRenderers` | {'int': 2355} |
| `chromeTabs` | {'int': 2355} |
| `chromeTabsProbedProfiles` | {'int': 2355} |
| `chromeUtilityPssKb` | {'int': 2355} |
| `desktopPssKb` | {'int': 2355} |
| `hostPssKb` | {'int': 2355} |
| `kind` | {'str': 2355} |
| `memAvailableKb` | {'int': 2355} |
| `memTotalKb` | {'int': 2355} |
| `otherPssKb` | {'int': 2355} |
| `processes` | {'int': 2355} |
| `pssFallbackProcesses` | {'int': 2355} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
