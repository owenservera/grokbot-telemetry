# sandbox_telemetry_parse — 2026-10-14 01:03:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=10314 lines=27
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 22 |
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
| `chromeBrowserPssKb` | {'int': 22} |
| `chromeGpuPssKb` | {'int': 22} |
| `chromeOtherPssKb` | {'int': 22} |
| `chromeProcesses` | {'int': 22} |
| `chromeProfiles` | {'int': 22} |
| `chromeRendererMaxPssKb` | {'int': 22} |
| `chromeRendererPssKb` | {'int': 22} |
| `chromeRenderers` | {'int': 22} |
| `chromeTabs` | {'int': 22} |
| `chromeTabsProbedProfiles` | {'int': 22} |
| `chromeUtilityPssKb` | {'int': 22} |
| `desktopPssKb` | {'int': 22} |
| `hostPssKb` | {'int': 22} |
| `kind` | {'str': 22} |
| `memAvailableKb` | {'int': 22} |
| `memTotalKb` | {'int': 22} |
| `otherPssKb` | {'int': 22} |
| `processes` | {'int': 22} |
| `pssFallbackProcesses` | {'int': 22} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
