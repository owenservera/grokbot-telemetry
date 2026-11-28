# sandbox_telemetry_parse — 2026-11-28 03:34:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=716386 lines=1590
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1582 |
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
| `chromeBrowserPssKb` | {'int': 1582} |
| `chromeGpuPssKb` | {'int': 1582} |
| `chromeOtherPssKb` | {'int': 1582} |
| `chromeProcesses` | {'int': 1582} |
| `chromeProfiles` | {'int': 1582} |
| `chromeRendererMaxPssKb` | {'int': 1582} |
| `chromeRendererPssKb` | {'int': 1582} |
| `chromeRenderers` | {'int': 1582} |
| `chromeTabs` | {'int': 1582} |
| `chromeTabsProbedProfiles` | {'int': 1582} |
| `chromeUtilityPssKb` | {'int': 1582} |
| `desktopPssKb` | {'int': 1582} |
| `hostPssKb` | {'int': 1582} |
| `kind` | {'str': 1582} |
| `memAvailableKb` | {'int': 1582} |
| `memTotalKb` | {'int': 1582} |
| `otherPssKb` | {'int': 1582} |
| `processes` | {'int': 1582} |
| `pssFallbackProcesses` | {'int': 1582} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
