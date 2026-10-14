# sandbox_telemetry_parse — 2026-10-15 01:50:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=600174 lines=1332
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1327 |
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
| `chromeBrowserPssKb` | {'int': 1327} |
| `chromeGpuPssKb` | {'int': 1327} |
| `chromeOtherPssKb` | {'int': 1327} |
| `chromeProcesses` | {'int': 1327} |
| `chromeProfiles` | {'int': 1327} |
| `chromeRendererMaxPssKb` | {'int': 1327} |
| `chromeRendererPssKb` | {'int': 1327} |
| `chromeRenderers` | {'int': 1327} |
| `chromeTabs` | {'int': 1327} |
| `chromeTabsProbedProfiles` | {'int': 1327} |
| `chromeUtilityPssKb` | {'int': 1327} |
| `desktopPssKb` | {'int': 1327} |
| `hostPssKb` | {'int': 1327} |
| `kind` | {'str': 1327} |
| `memAvailableKb` | {'int': 1327} |
| `memTotalKb` | {'int': 1327} |
| `otherPssKb` | {'int': 1327} |
| `processes` | {'int': 1327} |
| `pssFallbackProcesses` | {'int': 1327} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
