# sandbox_telemetry_parse — 2026-11-11 16:29:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1715910 lines=3800
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3791 |
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
| `chromeBrowserPssKb` | {'int': 3791} |
| `chromeGpuPssKb` | {'int': 3791} |
| `chromeOtherPssKb` | {'int': 3791} |
| `chromeProcesses` | {'int': 3791} |
| `chromeProfiles` | {'int': 3791} |
| `chromeRendererMaxPssKb` | {'int': 3791} |
| `chromeRendererPssKb` | {'int': 3791} |
| `chromeRenderers` | {'int': 3791} |
| `chromeTabs` | {'int': 3791} |
| `chromeTabsProbedProfiles` | {'int': 3791} |
| `chromeUtilityPssKb` | {'int': 3791} |
| `desktopPssKb` | {'int': 3791} |
| `hostPssKb` | {'int': 3791} |
| `kind` | {'str': 3791} |
| `memAvailableKb` | {'int': 3791} |
| `memTotalKb` | {'int': 3791} |
| `otherPssKb` | {'int': 3791} |
| `processes` | {'int': 3791} |
| `pssFallbackProcesses` | {'int': 3791} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
