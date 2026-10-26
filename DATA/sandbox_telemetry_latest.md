# sandbox_telemetry_parse — 2026-10-27 00:45:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=232317 lines=517
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 512 |
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
| `chromeBrowserPssKb` | {'int': 512} |
| `chromeGpuPssKb` | {'int': 512} |
| `chromeOtherPssKb` | {'int': 512} |
| `chromeProcesses` | {'int': 512} |
| `chromeProfiles` | {'int': 512} |
| `chromeRendererMaxPssKb` | {'int': 512} |
| `chromeRendererPssKb` | {'int': 512} |
| `chromeRenderers` | {'int': 512} |
| `chromeTabs` | {'int': 512} |
| `chromeTabsProbedProfiles` | {'int': 512} |
| `chromeUtilityPssKb` | {'int': 512} |
| `desktopPssKb` | {'int': 512} |
| `hostPssKb` | {'int': 512} |
| `kind` | {'str': 512} |
| `memAvailableKb` | {'int': 512} |
| `memTotalKb` | {'int': 512} |
| `otherPssKb` | {'int': 512} |
| `processes` | {'int': 512} |
| `pssFallbackProcesses` | {'int': 512} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
