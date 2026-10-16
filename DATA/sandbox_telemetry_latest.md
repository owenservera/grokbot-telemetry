# sandbox_telemetry_parse — 2026-10-16 20:38:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=811012 lines=3031
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2008 |
| `memory_sample` | 1014 |
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
| `chromeBrowserPssKb` | {'int': 1014} |
| `chromeGpuPssKb` | {'int': 1014} |
| `chromeOtherPssKb` | {'int': 1014} |
| `chromeProcesses` | {'int': 1014} |
| `chromeProfiles` | {'int': 1014} |
| `chromeRendererMaxPssKb` | {'int': 1014} |
| `chromeRendererPssKb` | {'int': 1014} |
| `chromeRenderers` | {'int': 1014} |
| `chromeTabs` | {'int': 1014} |
| `chromeTabsProbedProfiles` | {'int': 1014} |
| `chromeUtilityPssKb` | {'int': 1014} |
| `desktopPssKb` | {'int': 1014} |
| `hostPssKb` | {'int': 1014} |
| `kind` | {'str': 1014} |
| `memAvailableKb` | {'int': 1014} |
| `memTotalKb` | {'int': 1014} |
| `otherPssKb` | {'int': 1014} |
| `processes` | {'int': 1014} |
| `pssFallbackProcesses` | {'int': 1014} |

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
| `cpuMillicores` | {'int': 2005} |
| `display` | {'int': 2008} |
| `kind` | {'str': 2008} |
| `processes` | {'int': 2008} |
| `pssKb` | {'int': 2008} |
| `rendererMaxPssKb` | {'int': 2008} |
| `renderers` | {'int': 2008} |
| `tabs` | {'int': 2007} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
