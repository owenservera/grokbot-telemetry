# sandbox_telemetry_parse — 2026-10-27 01:18:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=243642 lines=542
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 537 |
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
| `chromeBrowserPssKb` | {'int': 537} |
| `chromeGpuPssKb` | {'int': 537} |
| `chromeOtherPssKb` | {'int': 537} |
| `chromeProcesses` | {'int': 537} |
| `chromeProfiles` | {'int': 537} |
| `chromeRendererMaxPssKb` | {'int': 537} |
| `chromeRendererPssKb` | {'int': 537} |
| `chromeRenderers` | {'int': 537} |
| `chromeTabs` | {'int': 537} |
| `chromeTabsProbedProfiles` | {'int': 537} |
| `chromeUtilityPssKb` | {'int': 537} |
| `desktopPssKb` | {'int': 537} |
| `hostPssKb` | {'int': 537} |
| `kind` | {'str': 537} |
| `memAvailableKb` | {'int': 537} |
| `memTotalKb` | {'int': 537} |
| `otherPssKb` | {'int': 537} |
| `processes` | {'int': 537} |
| `pssFallbackProcesses` | {'int': 537} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
