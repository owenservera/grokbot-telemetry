# sandbox_telemetry_parse — 2026-10-14 14:39:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=338466 lines=753
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 748 |
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
| `chromeBrowserPssKb` | {'int': 748} |
| `chromeGpuPssKb` | {'int': 748} |
| `chromeOtherPssKb` | {'int': 748} |
| `chromeProcesses` | {'int': 748} |
| `chromeProfiles` | {'int': 748} |
| `chromeRendererMaxPssKb` | {'int': 748} |
| `chromeRendererPssKb` | {'int': 748} |
| `chromeRenderers` | {'int': 748} |
| `chromeTabs` | {'int': 748} |
| `chromeTabsProbedProfiles` | {'int': 748} |
| `chromeUtilityPssKb` | {'int': 748} |
| `desktopPssKb` | {'int': 748} |
| `hostPssKb` | {'int': 748} |
| `kind` | {'str': 748} |
| `memAvailableKb` | {'int': 748} |
| `memTotalKb` | {'int': 748} |
| `otherPssKb` | {'int': 748} |
| `processes` | {'int': 748} |
| `pssFallbackProcesses` | {'int': 748} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
