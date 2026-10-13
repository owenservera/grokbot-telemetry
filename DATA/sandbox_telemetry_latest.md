# sandbox_telemetry_parse — 2026-10-13 09:22:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=979582 lines=2437
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1984 |
| `chrome_profile_sample` | 445 |
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
| `chromeBrowserPssKb` | {'int': 1984} |
| `chromeGpuPssKb` | {'int': 1984} |
| `chromeOtherPssKb` | {'int': 1984} |
| `chromeProcesses` | {'int': 1984} |
| `chromeProfiles` | {'int': 1984} |
| `chromeRendererMaxPssKb` | {'int': 1984} |
| `chromeRendererPssKb` | {'int': 1984} |
| `chromeRenderers` | {'int': 1984} |
| `chromeTabs` | {'int': 1984} |
| `chromeTabsProbedProfiles` | {'int': 1984} |
| `chromeUtilityPssKb` | {'int': 1984} |
| `desktopPssKb` | {'int': 1984} |
| `hostPssKb` | {'int': 1984} |
| `kind` | {'str': 1984} |
| `memAvailableKb` | {'int': 1984} |
| `memTotalKb` | {'int': 1984} |
| `otherPssKb` | {'int': 1984} |
| `processes` | {'int': 1984} |
| `pssFallbackProcesses` | {'int': 1984} |

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
| `cpuMillicores` | {'int': 444} |
| `display` | {'int': 445} |
| `kind` | {'str': 445} |
| `processes` | {'int': 445} |
| `pssKb` | {'int': 445} |
| `rendererMaxPssKb` | {'int': 445} |
| `renderers` | {'int': 445} |
| `tabs` | {'int': 445} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
