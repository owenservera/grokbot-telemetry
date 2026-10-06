# sandbox_telemetry_parse — 2026-10-07 00:04:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=683738 lines=1504
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1499 |
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
| `chromeBrowserPssKb` | {'int': 1499} |
| `chromeGpuPssKb` | {'int': 1499} |
| `chromeOtherPssKb` | {'int': 1499} |
| `chromeProcesses` | {'int': 1499} |
| `chromeProfiles` | {'int': 1499} |
| `chromeRendererMaxPssKb` | {'int': 1499} |
| `chromeRendererPssKb` | {'int': 1499} |
| `chromeRenderers` | {'int': 1499} |
| `chromeTabs` | {'int': 1499} |
| `chromeTabsProbedProfiles` | {'int': 1499} |
| `chromeUtilityPssKb` | {'int': 1499} |
| `desktopPssKb` | {'int': 1499} |
| `hostPssKb` | {'int': 1499} |
| `kind` | {'str': 1499} |
| `memAvailableKb` | {'int': 1499} |
| `memTotalKb` | {'int': 1499} |
| `otherPssKb` | {'int': 1499} |
| `processes` | {'int': 1499} |
| `pssFallbackProcesses` | {'int': 1499} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
