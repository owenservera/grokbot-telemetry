# sandbox_telemetry_parse — 2026-10-07 11:07:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=981685 lines=2157
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2152 |
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
| `chromeBrowserPssKb` | {'int': 2152} |
| `chromeGpuPssKb` | {'int': 2152} |
| `chromeOtherPssKb` | {'int': 2152} |
| `chromeProcesses` | {'int': 2152} |
| `chromeProfiles` | {'int': 2152} |
| `chromeRendererMaxPssKb` | {'int': 2152} |
| `chromeRendererPssKb` | {'int': 2152} |
| `chromeRenderers` | {'int': 2152} |
| `chromeTabs` | {'int': 2152} |
| `chromeTabsProbedProfiles` | {'int': 2152} |
| `chromeUtilityPssKb` | {'int': 2152} |
| `desktopPssKb` | {'int': 2152} |
| `hostPssKb` | {'int': 2152} |
| `kind` | {'str': 2152} |
| `memAvailableKb` | {'int': 2152} |
| `memTotalKb` | {'int': 2152} |
| `otherPssKb` | {'int': 2152} |
| `processes` | {'int': 2152} |
| `pssFallbackProcesses` | {'int': 2152} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
