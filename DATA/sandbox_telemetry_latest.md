# sandbox_telemetry_parse — 2026-11-12 00:53:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1898770 lines=4204
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4195 |
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
| `chromeBrowserPssKb` | {'int': 4195} |
| `chromeGpuPssKb` | {'int': 4195} |
| `chromeOtherPssKb` | {'int': 4195} |
| `chromeProcesses` | {'int': 4195} |
| `chromeProfiles` | {'int': 4195} |
| `chromeRendererMaxPssKb` | {'int': 4195} |
| `chromeRendererPssKb` | {'int': 4195} |
| `chromeRenderers` | {'int': 4195} |
| `chromeTabs` | {'int': 4195} |
| `chromeTabsProbedProfiles` | {'int': 4195} |
| `chromeUtilityPssKb` | {'int': 4195} |
| `desktopPssKb` | {'int': 4195} |
| `hostPssKb` | {'int': 4195} |
| `kind` | {'str': 4195} |
| `memAvailableKb` | {'int': 4195} |
| `memTotalKb` | {'int': 4195} |
| `otherPssKb` | {'int': 4195} |
| `processes` | {'int': 4195} |
| `pssFallbackProcesses` | {'int': 4195} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
