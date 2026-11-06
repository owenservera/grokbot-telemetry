# sandbox_telemetry_parse — 2026-11-06 23:18:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=208797 lines=469
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 460 |
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
| `chromeBrowserPssKb` | {'int': 460} |
| `chromeGpuPssKb` | {'int': 460} |
| `chromeOtherPssKb` | {'int': 460} |
| `chromeProcesses` | {'int': 460} |
| `chromeProfiles` | {'int': 460} |
| `chromeRendererMaxPssKb` | {'int': 460} |
| `chromeRendererPssKb` | {'int': 460} |
| `chromeRenderers` | {'int': 460} |
| `chromeTabs` | {'int': 460} |
| `chromeTabsProbedProfiles` | {'int': 460} |
| `chromeUtilityPssKb` | {'int': 460} |
| `desktopPssKb` | {'int': 460} |
| `hostPssKb` | {'int': 460} |
| `kind` | {'str': 460} |
| `memAvailableKb` | {'int': 460} |
| `memTotalKb` | {'int': 460} |
| `otherPssKb` | {'int': 460} |
| `processes` | {'int': 460} |
| `pssFallbackProcesses` | {'int': 460} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
