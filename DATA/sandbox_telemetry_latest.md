# sandbox_telemetry_parse — 2026-10-15 10:24:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=809902 lines=1796
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1791 |
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
| `chromeBrowserPssKb` | {'int': 1791} |
| `chromeGpuPssKb` | {'int': 1791} |
| `chromeOtherPssKb` | {'int': 1791} |
| `chromeProcesses` | {'int': 1791} |
| `chromeProfiles` | {'int': 1791} |
| `chromeRendererMaxPssKb` | {'int': 1791} |
| `chromeRendererPssKb` | {'int': 1791} |
| `chromeRenderers` | {'int': 1791} |
| `chromeTabs` | {'int': 1791} |
| `chromeTabsProbedProfiles` | {'int': 1791} |
| `chromeUtilityPssKb` | {'int': 1791} |
| `desktopPssKb` | {'int': 1791} |
| `hostPssKb` | {'int': 1791} |
| `kind` | {'str': 1791} |
| `memAvailableKb` | {'int': 1791} |
| `memTotalKb` | {'int': 1791} |
| `otherPssKb` | {'int': 1791} |
| `processes` | {'int': 1791} |
| `pssFallbackProcesses` | {'int': 1791} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
