# sandbox_telemetry_parse — 2026-10-26 16:40:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=23031 lines=55
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 50 |
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
| `chromeBrowserPssKb` | {'int': 50} |
| `chromeGpuPssKb` | {'int': 50} |
| `chromeOtherPssKb` | {'int': 50} |
| `chromeProcesses` | {'int': 50} |
| `chromeProfiles` | {'int': 50} |
| `chromeRendererMaxPssKb` | {'int': 50} |
| `chromeRendererPssKb` | {'int': 50} |
| `chromeRenderers` | {'int': 50} |
| `chromeTabs` | {'int': 50} |
| `chromeTabsProbedProfiles` | {'int': 50} |
| `chromeUtilityPssKb` | {'int': 50} |
| `desktopPssKb` | {'int': 50} |
| `hostPssKb` | {'int': 50} |
| `kind` | {'str': 50} |
| `memAvailableKb` | {'int': 50} |
| `memTotalKb` | {'int': 50} |
| `otherPssKb` | {'int': 50} |
| `processes` | {'int': 50} |
| `pssFallbackProcesses` | {'int': 50} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
