# sandbox_telemetry_parse — 2026-10-16 17:09:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=656035 lines=2452
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1622 |
| `memory_sample` | 821 |
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
| `chromeBrowserPssKb` | {'int': 821} |
| `chromeGpuPssKb` | {'int': 821} |
| `chromeOtherPssKb` | {'int': 821} |
| `chromeProcesses` | {'int': 821} |
| `chromeProfiles` | {'int': 821} |
| `chromeRendererMaxPssKb` | {'int': 821} |
| `chromeRendererPssKb` | {'int': 821} |
| `chromeRenderers` | {'int': 821} |
| `chromeTabs` | {'int': 821} |
| `chromeTabsProbedProfiles` | {'int': 821} |
| `chromeUtilityPssKb` | {'int': 821} |
| `desktopPssKb` | {'int': 821} |
| `hostPssKb` | {'int': 821} |
| `kind` | {'str': 821} |
| `memAvailableKb` | {'int': 821} |
| `memTotalKb` | {'int': 821} |
| `otherPssKb` | {'int': 821} |
| `processes` | {'int': 821} |
| `pssFallbackProcesses` | {'int': 821} |

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
| `cpuMillicores` | {'int': 1619} |
| `display` | {'int': 1622} |
| `kind` | {'str': 1622} |
| `processes` | {'int': 1622} |
| `pssKb` | {'int': 1622} |
| `rendererMaxPssKb` | {'int': 1622} |
| `renderers` | {'int': 1622} |
| `tabs` | {'int': 1621} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
