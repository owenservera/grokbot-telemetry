# sandbox_telemetry_parse — 2026-10-12 22:46:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=683812 lines=1517
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1512 |
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
| `chromeBrowserPssKb` | {'int': 1512} |
| `chromeGpuPssKb` | {'int': 1512} |
| `chromeOtherPssKb` | {'int': 1512} |
| `chromeProcesses` | {'int': 1512} |
| `chromeProfiles` | {'int': 1512} |
| `chromeRendererMaxPssKb` | {'int': 1512} |
| `chromeRendererPssKb` | {'int': 1512} |
| `chromeRenderers` | {'int': 1512} |
| `chromeTabs` | {'int': 1512} |
| `chromeTabsProbedProfiles` | {'int': 1512} |
| `chromeUtilityPssKb` | {'int': 1512} |
| `desktopPssKb` | {'int': 1512} |
| `hostPssKb` | {'int': 1512} |
| `kind` | {'str': 1512} |
| `memAvailableKb` | {'int': 1512} |
| `memTotalKb` | {'int': 1512} |
| `otherPssKb` | {'int': 1512} |
| `processes` | {'int': 1512} |
| `pssFallbackProcesses` | {'int': 1512} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
