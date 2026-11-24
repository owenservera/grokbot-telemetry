# sandbox_telemetry_parse — 2026-11-24 18:57:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2405563 lines=5331
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5316 |
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
| `chromeBrowserPssKb` | {'int': 5316} |
| `chromeGpuPssKb` | {'int': 5316} |
| `chromeOtherPssKb` | {'int': 5316} |
| `chromeProcesses` | {'int': 5316} |
| `chromeProfiles` | {'int': 5316} |
| `chromeRendererMaxPssKb` | {'int': 5316} |
| `chromeRendererPssKb` | {'int': 5316} |
| `chromeRenderers` | {'int': 5316} |
| `chromeTabs` | {'int': 5316} |
| `chromeTabsProbedProfiles` | {'int': 5316} |
| `chromeUtilityPssKb` | {'int': 5316} |
| `desktopPssKb` | {'int': 5316} |
| `hostPssKb` | {'int': 5316} |
| `kind` | {'str': 5316} |
| `memAvailableKb` | {'int': 5316} |
| `memTotalKb` | {'int': 5316} |
| `otherPssKb` | {'int': 5316} |
| `processes` | {'int': 5316} |
| `pssFallbackProcesses` | {'int': 5316} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
