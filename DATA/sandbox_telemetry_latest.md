# sandbox_telemetry_parse — 2026-10-06 17:56:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=516386 lines=1137
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1132 |
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
| `chromeBrowserPssKb` | {'int': 1132} |
| `chromeGpuPssKb` | {'int': 1132} |
| `chromeOtherPssKb` | {'int': 1132} |
| `chromeProcesses` | {'int': 1132} |
| `chromeProfiles` | {'int': 1132} |
| `chromeRendererMaxPssKb` | {'int': 1132} |
| `chromeRendererPssKb` | {'int': 1132} |
| `chromeRenderers` | {'int': 1132} |
| `chromeTabs` | {'int': 1132} |
| `chromeTabsProbedProfiles` | {'int': 1132} |
| `chromeUtilityPssKb` | {'int': 1132} |
| `desktopPssKb` | {'int': 1132} |
| `hostPssKb` | {'int': 1132} |
| `kind` | {'str': 1132} |
| `memAvailableKb` | {'int': 1132} |
| `memTotalKb` | {'int': 1132} |
| `otherPssKb` | {'int': 1132} |
| `processes` | {'int': 1132} |
| `pssFallbackProcesses` | {'int': 1132} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
