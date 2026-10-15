# sandbox_telemetry_parse — 2026-10-15 08:02:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=750690 lines=1665
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1660 |
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
| `chromeBrowserPssKb` | {'int': 1660} |
| `chromeGpuPssKb` | {'int': 1660} |
| `chromeOtherPssKb` | {'int': 1660} |
| `chromeProcesses` | {'int': 1660} |
| `chromeProfiles` | {'int': 1660} |
| `chromeRendererMaxPssKb` | {'int': 1660} |
| `chromeRendererPssKb` | {'int': 1660} |
| `chromeRenderers` | {'int': 1660} |
| `chromeTabs` | {'int': 1660} |
| `chromeTabsProbedProfiles` | {'int': 1660} |
| `chromeUtilityPssKb` | {'int': 1660} |
| `desktopPssKb` | {'int': 1660} |
| `hostPssKb` | {'int': 1660} |
| `kind` | {'str': 1660} |
| `memAvailableKb` | {'int': 1660} |
| `memTotalKb` | {'int': 1660} |
| `otherPssKb` | {'int': 1660} |
| `processes` | {'int': 1660} |
| `pssFallbackProcesses` | {'int': 1660} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
