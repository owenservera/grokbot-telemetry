# sandbox_telemetry_parse — 2026-11-13 00:02:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2382650 lines=5273
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5264 |
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
| `chromeBrowserPssKb` | {'int': 5264} |
| `chromeGpuPssKb` | {'int': 5264} |
| `chromeOtherPssKb` | {'int': 5264} |
| `chromeProcesses` | {'int': 5264} |
| `chromeProfiles` | {'int': 5264} |
| `chromeRendererMaxPssKb` | {'int': 5264} |
| `chromeRendererPssKb` | {'int': 5264} |
| `chromeRenderers` | {'int': 5264} |
| `chromeTabs` | {'int': 5264} |
| `chromeTabsProbedProfiles` | {'int': 5264} |
| `chromeUtilityPssKb` | {'int': 5264} |
| `desktopPssKb` | {'int': 5264} |
| `hostPssKb` | {'int': 5264} |
| `kind` | {'str': 5264} |
| `memAvailableKb` | {'int': 5264} |
| `memTotalKb` | {'int': 5264} |
| `otherPssKb` | {'int': 5264} |
| `processes` | {'int': 5264} |
| `pssFallbackProcesses` | {'int': 5264} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
