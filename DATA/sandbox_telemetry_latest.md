# sandbox_telemetry_parse — 2026-10-15 11:08:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=827078 lines=1834
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1829 |
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
| `chromeBrowserPssKb` | {'int': 1829} |
| `chromeGpuPssKb` | {'int': 1829} |
| `chromeOtherPssKb` | {'int': 1829} |
| `chromeProcesses` | {'int': 1829} |
| `chromeProfiles` | {'int': 1829} |
| `chromeRendererMaxPssKb` | {'int': 1829} |
| `chromeRendererPssKb` | {'int': 1829} |
| `chromeRenderers` | {'int': 1829} |
| `chromeTabs` | {'int': 1829} |
| `chromeTabsProbedProfiles` | {'int': 1829} |
| `chromeUtilityPssKb` | {'int': 1829} |
| `desktopPssKb` | {'int': 1829} |
| `hostPssKb` | {'int': 1829} |
| `kind` | {'str': 1829} |
| `memAvailableKb` | {'int': 1829} |
| `memTotalKb` | {'int': 1829} |
| `otherPssKb` | {'int': 1829} |
| `processes` | {'int': 1829} |
| `pssFallbackProcesses` | {'int': 1829} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
