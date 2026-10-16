# sandbox_telemetry_parse — 2026-10-16 15:30:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=582210 lines=2176
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1438 |
| `memory_sample` | 729 |
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
| `chromeBrowserPssKb` | {'int': 729} |
| `chromeGpuPssKb` | {'int': 729} |
| `chromeOtherPssKb` | {'int': 729} |
| `chromeProcesses` | {'int': 729} |
| `chromeProfiles` | {'int': 729} |
| `chromeRendererMaxPssKb` | {'int': 729} |
| `chromeRendererPssKb` | {'int': 729} |
| `chromeRenderers` | {'int': 729} |
| `chromeTabs` | {'int': 729} |
| `chromeTabsProbedProfiles` | {'int': 729} |
| `chromeUtilityPssKb` | {'int': 729} |
| `desktopPssKb` | {'int': 729} |
| `hostPssKb` | {'int': 729} |
| `kind` | {'str': 729} |
| `memAvailableKb` | {'int': 729} |
| `memTotalKb` | {'int': 729} |
| `otherPssKb` | {'int': 729} |
| `processes` | {'int': 729} |
| `pssFallbackProcesses` | {'int': 729} |

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
| `cpuMillicores` | {'int': 1435} |
| `display` | {'int': 1438} |
| `kind` | {'str': 1438} |
| `processes` | {'int': 1438} |
| `pssKb` | {'int': 1438} |
| `rendererMaxPssKb` | {'int': 1438} |
| `renderers` | {'int': 1438} |
| `tabs` | {'int': 1437} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
