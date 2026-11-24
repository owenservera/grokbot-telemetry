# sandbox_telemetry_parse — 2026-11-25 00:50:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2524998 lines=5595
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5580 |
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
| `chromeBrowserPssKb` | {'int': 5580} |
| `chromeGpuPssKb` | {'int': 5580} |
| `chromeOtherPssKb` | {'int': 5580} |
| `chromeProcesses` | {'int': 5580} |
| `chromeProfiles` | {'int': 5580} |
| `chromeRendererMaxPssKb` | {'int': 5580} |
| `chromeRendererPssKb` | {'int': 5580} |
| `chromeRenderers` | {'int': 5580} |
| `chromeTabs` | {'int': 5580} |
| `chromeTabsProbedProfiles` | {'int': 5580} |
| `chromeUtilityPssKb` | {'int': 5580} |
| `desktopPssKb` | {'int': 5580} |
| `hostPssKb` | {'int': 5580} |
| `kind` | {'str': 5580} |
| `memAvailableKb` | {'int': 5580} |
| `memTotalKb` | {'int': 5580} |
| `otherPssKb` | {'int': 5580} |
| `processes` | {'int': 5580} |
| `pssFallbackProcesses` | {'int': 5580} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
