# sandbox_telemetry_parse — 2026-10-15 09:54:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=798150 lines=1770
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1765 |
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
| `chromeBrowserPssKb` | {'int': 1765} |
| `chromeGpuPssKb` | {'int': 1765} |
| `chromeOtherPssKb` | {'int': 1765} |
| `chromeProcesses` | {'int': 1765} |
| `chromeProfiles` | {'int': 1765} |
| `chromeRendererMaxPssKb` | {'int': 1765} |
| `chromeRendererPssKb` | {'int': 1765} |
| `chromeRenderers` | {'int': 1765} |
| `chromeTabs` | {'int': 1765} |
| `chromeTabsProbedProfiles` | {'int': 1765} |
| `chromeUtilityPssKb` | {'int': 1765} |
| `desktopPssKb` | {'int': 1765} |
| `hostPssKb` | {'int': 1765} |
| `kind` | {'str': 1765} |
| `memAvailableKb` | {'int': 1765} |
| `memTotalKb` | {'int': 1765} |
| `otherPssKb` | {'int': 1765} |
| `processes` | {'int': 1765} |
| `pssFallbackProcesses` | {'int': 1765} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
