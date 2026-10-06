# sandbox_telemetry_parse — 2026-10-06 12:26:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=368186 lines=812
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 807 |
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
| `chromeBrowserPssKb` | {'int': 807} |
| `chromeGpuPssKb` | {'int': 807} |
| `chromeOtherPssKb` | {'int': 807} |
| `chromeProcesses` | {'int': 807} |
| `chromeProfiles` | {'int': 807} |
| `chromeRendererMaxPssKb` | {'int': 807} |
| `chromeRendererPssKb` | {'int': 807} |
| `chromeRenderers` | {'int': 807} |
| `chromeTabs` | {'int': 807} |
| `chromeTabsProbedProfiles` | {'int': 807} |
| `chromeUtilityPssKb` | {'int': 807} |
| `desktopPssKb` | {'int': 807} |
| `hostPssKb` | {'int': 807} |
| `kind` | {'str': 807} |
| `memAvailableKb` | {'int': 807} |
| `memTotalKb` | {'int': 807} |
| `otherPssKb` | {'int': 807} |
| `processes` | {'int': 807} |
| `pssFallbackProcesses` | {'int': 807} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
