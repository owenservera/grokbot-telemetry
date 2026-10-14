# sandbox_telemetry_parse — 2026-10-14 11:00:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=248066 lines=553
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 548 |
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
| `chromeBrowserPssKb` | {'int': 548} |
| `chromeGpuPssKb` | {'int': 548} |
| `chromeOtherPssKb` | {'int': 548} |
| `chromeProcesses` | {'int': 548} |
| `chromeProfiles` | {'int': 548} |
| `chromeRendererMaxPssKb` | {'int': 548} |
| `chromeRendererPssKb` | {'int': 548} |
| `chromeRenderers` | {'int': 548} |
| `chromeTabs` | {'int': 548} |
| `chromeTabsProbedProfiles` | {'int': 548} |
| `chromeUtilityPssKb` | {'int': 548} |
| `desktopPssKb` | {'int': 548} |
| `hostPssKb` | {'int': 548} |
| `kind` | {'str': 548} |
| `memAvailableKb` | {'int': 548} |
| `memTotalKb` | {'int': 548} |
| `otherPssKb` | {'int': 548} |
| `processes` | {'int': 548} |
| `pssFallbackProcesses` | {'int': 548} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
