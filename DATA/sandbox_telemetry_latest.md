# sandbox_telemetry_parse — 2026-10-12 17:12:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=636352 lines=1412
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1407 |
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
| `chromeBrowserPssKb` | {'int': 1407} |
| `chromeGpuPssKb` | {'int': 1407} |
| `chromeOtherPssKb` | {'int': 1407} |
| `chromeProcesses` | {'int': 1407} |
| `chromeProfiles` | {'int': 1407} |
| `chromeRendererMaxPssKb` | {'int': 1407} |
| `chromeRendererPssKb` | {'int': 1407} |
| `chromeRenderers` | {'int': 1407} |
| `chromeTabs` | {'int': 1407} |
| `chromeTabsProbedProfiles` | {'int': 1407} |
| `chromeUtilityPssKb` | {'int': 1407} |
| `desktopPssKb` | {'int': 1407} |
| `hostPssKb` | {'int': 1407} |
| `kind` | {'str': 1407} |
| `memAvailableKb` | {'int': 1407} |
| `memTotalKb` | {'int': 1407} |
| `otherPssKb` | {'int': 1407} |
| `processes` | {'int': 1407} |
| `pssFallbackProcesses` | {'int': 1407} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
