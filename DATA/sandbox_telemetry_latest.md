# sandbox_telemetry_parse — 2026-11-27 06:48:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=290555 lines=649
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 641 |
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
| `chromeBrowserPssKb` | {'int': 641} |
| `chromeGpuPssKb` | {'int': 641} |
| `chromeOtherPssKb` | {'int': 641} |
| `chromeProcesses` | {'int': 641} |
| `chromeProfiles` | {'int': 641} |
| `chromeRendererMaxPssKb` | {'int': 641} |
| `chromeRendererPssKb` | {'int': 641} |
| `chromeRenderers` | {'int': 641} |
| `chromeTabs` | {'int': 641} |
| `chromeTabsProbedProfiles` | {'int': 641} |
| `chromeUtilityPssKb` | {'int': 641} |
| `desktopPssKb` | {'int': 641} |
| `hostPssKb` | {'int': 641} |
| `kind` | {'str': 641} |
| `memAvailableKb` | {'int': 641} |
| `memTotalKb` | {'int': 641} |
| `otherPssKb` | {'int': 641} |
| `processes` | {'int': 641} |
| `pssFallbackProcesses` | {'int': 641} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
