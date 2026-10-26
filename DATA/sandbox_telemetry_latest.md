# sandbox_telemetry_parse — 2026-10-26 21:22:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=146247 lines=327
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 322 |
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
| `chromeBrowserPssKb` | {'int': 322} |
| `chromeGpuPssKb` | {'int': 322} |
| `chromeOtherPssKb` | {'int': 322} |
| `chromeProcesses` | {'int': 322} |
| `chromeProfiles` | {'int': 322} |
| `chromeRendererMaxPssKb` | {'int': 322} |
| `chromeRendererPssKb` | {'int': 322} |
| `chromeRenderers` | {'int': 322} |
| `chromeTabs` | {'int': 322} |
| `chromeTabsProbedProfiles` | {'int': 322} |
| `chromeUtilityPssKb` | {'int': 322} |
| `desktopPssKb` | {'int': 322} |
| `hostPssKb` | {'int': 322} |
| `kind` | {'str': 322} |
| `memAvailableKb` | {'int': 322} |
| `memTotalKb` | {'int': 322} |
| `otherPssKb` | {'int': 322} |
| `processes` | {'int': 322} |
| `pssFallbackProcesses` | {'int': 322} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
