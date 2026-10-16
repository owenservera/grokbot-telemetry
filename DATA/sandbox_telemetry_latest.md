# sandbox_telemetry_parse — 2026-10-17 00:28:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=957177 lines=3577
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2372 |
| `memory_sample` | 1196 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 1196} |
| `chromeGpuPssKb` | {'int': 1196} |
| `chromeOtherPssKb` | {'int': 1196} |
| `chromeProcesses` | {'int': 1196} |
| `chromeProfiles` | {'int': 1196} |
| `chromeRendererMaxPssKb` | {'int': 1196} |
| `chromeRendererPssKb` | {'int': 1196} |
| `chromeRenderers` | {'int': 1196} |
| `chromeTabs` | {'int': 1196} |
| `chromeTabsProbedProfiles` | {'int': 1196} |
| `chromeUtilityPssKb` | {'int': 1196} |
| `desktopPssKb` | {'int': 1196} |
| `hostPssKb` | {'int': 1196} |
| `kind` | {'str': 1196} |
| `memAvailableKb` | {'int': 1196} |
| `memTotalKb` | {'int': 1196} |
| `otherPssKb` | {'int': 1196} |
| `processes` | {'int': 1196} |
| `pssFallbackProcesses` | {'int': 1196} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 2369} |
| `display` | {'int': 2372} |
| `kind` | {'str': 2372} |
| `processes` | {'int': 2372} |
| `pssKb` | {'int': 2372} |
| `rendererMaxPssKb` | {'int': 2372} |
| `renderers` | {'int': 2372} |
| `tabs` | {'int': 2371} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
