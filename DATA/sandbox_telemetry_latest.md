# sandbox_telemetry_parse — 2026-10-07 02:14:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=742232 lines=1632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1627 |
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
| `chromeBrowserPssKb` | {'int': 1627} |
| `chromeGpuPssKb` | {'int': 1627} |
| `chromeOtherPssKb` | {'int': 1627} |
| `chromeProcesses` | {'int': 1627} |
| `chromeProfiles` | {'int': 1627} |
| `chromeRendererMaxPssKb` | {'int': 1627} |
| `chromeRendererPssKb` | {'int': 1627} |
| `chromeRenderers` | {'int': 1627} |
| `chromeTabs` | {'int': 1627} |
| `chromeTabsProbedProfiles` | {'int': 1627} |
| `chromeUtilityPssKb` | {'int': 1627} |
| `desktopPssKb` | {'int': 1627} |
| `hostPssKb` | {'int': 1627} |
| `kind` | {'str': 1627} |
| `memAvailableKb` | {'int': 1627} |
| `memTotalKb` | {'int': 1627} |
| `otherPssKb` | {'int': 1627} |
| `processes` | {'int': 1627} |
| `pssFallbackProcesses` | {'int': 1627} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
