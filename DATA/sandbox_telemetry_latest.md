# sandbox_telemetry_parse — 2026-10-13 19:55:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1206061 lines=3147
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2339 |
| `chrome_profile_sample` | 800 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2339} |
| `chromeGpuPssKb` | {'int': 2339} |
| `chromeOtherPssKb` | {'int': 2339} |
| `chromeProcesses` | {'int': 2339} |
| `chromeProfiles` | {'int': 2339} |
| `chromeRendererMaxPssKb` | {'int': 2339} |
| `chromeRendererPssKb` | {'int': 2339} |
| `chromeRenderers` | {'int': 2339} |
| `chromeTabs` | {'int': 2339} |
| `chromeTabsProbedProfiles` | {'int': 2339} |
| `chromeUtilityPssKb` | {'int': 2339} |
| `desktopPssKb` | {'int': 2339} |
| `hostPssKb` | {'int': 2339} |
| `kind` | {'str': 2339} |
| `memAvailableKb` | {'int': 2339} |
| `memTotalKb` | {'int': 2339} |
| `otherPssKb` | {'int': 2339} |
| `processes` | {'int': 2339} |
| `pssFallbackProcesses` | {'int': 2339} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 799} |
| `display` | {'int': 800} |
| `kind` | {'str': 800} |
| `processes` | {'int': 800} |
| `pssKb` | {'int': 800} |
| `rendererMaxPssKb` | {'int': 800} |
| `renderers` | {'int': 800} |
| `tabs` | {'int': 800} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
