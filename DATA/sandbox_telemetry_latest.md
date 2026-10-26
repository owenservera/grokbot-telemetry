# sandbox_telemetry_parse — 2026-10-26 20:09:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=115896 lines=260
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 255 |
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
| `chromeBrowserPssKb` | {'int': 255} |
| `chromeGpuPssKb` | {'int': 255} |
| `chromeOtherPssKb` | {'int': 255} |
| `chromeProcesses` | {'int': 255} |
| `chromeProfiles` | {'int': 255} |
| `chromeRendererMaxPssKb` | {'int': 255} |
| `chromeRendererPssKb` | {'int': 255} |
| `chromeRenderers` | {'int': 255} |
| `chromeTabs` | {'int': 255} |
| `chromeTabsProbedProfiles` | {'int': 255} |
| `chromeUtilityPssKb` | {'int': 255} |
| `desktopPssKb` | {'int': 255} |
| `hostPssKb` | {'int': 255} |
| `kind` | {'str': 255} |
| `memAvailableKb` | {'int': 255} |
| `memTotalKb` | {'int': 255} |
| `otherPssKb` | {'int': 255} |
| `processes` | {'int': 255} |
| `pssFallbackProcesses` | {'int': 255} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
