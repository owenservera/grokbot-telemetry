# sandbox_telemetry_parse — 2026-10-15 07:36:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=739842 lines=1641
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1636 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1636} |
| `chromeGpuPssKb` | {'int': 1636} |
| `chromeOtherPssKb` | {'int': 1636} |
| `chromeProcesses` | {'int': 1636} |
| `chromeProfiles` | {'int': 1636} |
| `chromeRendererMaxPssKb` | {'int': 1636} |
| `chromeRendererPssKb` | {'int': 1636} |
| `chromeRenderers` | {'int': 1636} |
| `chromeTabs` | {'int': 1636} |
| `chromeTabsProbedProfiles` | {'int': 1636} |
| `chromeUtilityPssKb` | {'int': 1636} |
| `desktopPssKb` | {'int': 1636} |
| `hostPssKb` | {'int': 1636} |
| `kind` | {'str': 1636} |
| `memAvailableKb` | {'int': 1636} |
| `memTotalKb` | {'int': 1636} |
| `otherPssKb` | {'int': 1636} |
| `processes` | {'int': 1636} |
| `pssFallbackProcesses` | {'int': 1636} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
