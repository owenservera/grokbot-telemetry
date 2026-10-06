# sandbox_telemetry_parse — 2026-10-06 17:50:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=514106 lines=1132
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1127 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 1127} |
| `chromeGpuPssKb` | {'int': 1127} |
| `chromeOtherPssKb` | {'int': 1127} |
| `chromeProcesses` | {'int': 1127} |
| `chromeProfiles` | {'int': 1127} |
| `chromeRendererMaxPssKb` | {'int': 1127} |
| `chromeRendererPssKb` | {'int': 1127} |
| `chromeRenderers` | {'int': 1127} |
| `chromeTabs` | {'int': 1127} |
| `chromeTabsProbedProfiles` | {'int': 1127} |
| `chromeUtilityPssKb` | {'int': 1127} |
| `desktopPssKb` | {'int': 1127} |
| `hostPssKb` | {'int': 1127} |
| `kind` | {'str': 1127} |
| `memAvailableKb` | {'int': 1127} |
| `memTotalKb` | {'int': 1127} |
| `otherPssKb` | {'int': 1127} |
| `processes` | {'int': 1127} |
| `pssFallbackProcesses` | {'int': 1127} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
